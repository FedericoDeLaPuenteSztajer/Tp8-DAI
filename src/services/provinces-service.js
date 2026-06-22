import ProvinceRepository from '../repositories/provinces-repository.js';

export default class ProvinceService {
    constructor() {
        console.log('Estoy en: ProvinceService.constructor()');
        this.ProvinceRepository = new CalificacionesRepository();
    }

    getAllAsync = async () => {
        console.log(`ProvinceService.getAllAsync()`);
        const returnArray = await this.ProvinceRepository.getAllAsync();
        if (returnArray == null) return null;
        return returnArray;
    }

}