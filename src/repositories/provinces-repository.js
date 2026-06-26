import Db from './db-pg.js';

export default class ProvincesRepository {
    constructor() {
        console.log('Estoy en: ProvincesRepository.constructor()');
        this.db = new Db();
    }

    getAllAsync = async () => {
        console.log(`ProvincesRepository.getAllAsync()`);
        const sql = `SELECT * FROM provinces`;
        return await this.db.queryAll(sql);
    }

    getByIdAsync = async (id) => {
        console.log(`ProvincesRepository.getByIdAsync(${id})`);
        const sql = `SELECT * FROM provinces WHERE id=$1`;
        return await this.db.queryOne(sql, [id]);
    }

    createAsync = async (entity) => {
        console.log(`ProvincesRepository.createAsync(${JSON.stringify(entity)})`);
        const sql = ` INSERT INTO provinces (
                            name              ,
                            full_name            ,
                            latitude            ,
                            longitude    ,
                            display_order
                        ) VALUES (
                            $1,
                            $2,
                            $3,
                            $4,
                            $5
                        ) RETURNING id`;
        const values = [
            entity?.name           ?? '',
            entity?.full_name         ?? '',
            entity?.latitude         ?? 0,
            entity?.longitude ?? null,
            entity?.display_order    ?? 0
        ];
        return await this.db.queryReturnId(sql, values);
    }

    updateAsync = async (entity) => {
        console.log(`ProvincesRepository.updateAsync(${JSON.stringify(entity)})`);
        let id = entity.id;

        const previousEntity = await this.getByIdAsync(id);
        if (previousEntity == null) return 0;

        const sql = `UPDATE provinces SET
                        name              = $2,
                        full_name            = $3,
                        latitude            = $4,
                        longitude    = $5,
                        display_order       = $6
                    WHERE id = $1`;
        const values = [
            id,
            entity?.name           ?? previousEntity?.name,
            entity?.full_name         ?? previousEntity?.full_name,
            entity?.latitude         ?? previousEntity?.latitude,
            entity?.longitude ?? previousEntity?.longitude,
            entity?.display_order    ?? previousEntity?.display_order
        ];
        return await this.db.queryRowCount(sql, values);
    }

    deleteByIdAsync = async (id) => {
        console.log(`ProvincesRepository.deleteByIdAsync(${id})`);
        const sql = `DELETE FROM provinces WHERE id=$1`;
        return await this.db.queryRowCount(sql, [id]);
    }
}
