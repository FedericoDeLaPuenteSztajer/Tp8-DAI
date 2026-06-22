import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';
import ProvinceService from '../services/provinces-service.js'

const router = Router();
const currentService = new ProvinceService();

router.get('', async (req, res) => {
    try {
        console.log(`ProvinceController.get`);
        const returnArray = await currentService.getAllAsync();
        if (returnArray != null){
            res.status(StatusCodes.OK).json(returnArray);
        } else {
            res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error interno.`);
        }
    } catch (error) {
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ${error.message}`);
    }
});

export default router;
