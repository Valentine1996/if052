/**
 * Copyright (c) 2015, SoftServe and/or its affiliates. All rights reserved.
 */
package com.softserveinc.if052_restful.service;

import com.softserveinc.if052_restful.domain.WaterMeter;
import com.softserveinc.if052_restful.mappers.WaterMeterMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Service for work with User.
 * @see com.softserveinc.if052_restful.domain.User
 *
 * @version 1.0
 */
@Service
@Transactional
public class WaterMeterService {

    @Autowired
    private WaterMeterMapper waterMeterMapper;

    /**
     * Get exists water meter by id
     *  
     * @param waterMeterId
     * @return
     */
    public WaterMeter getWaterMeterById(int waterMeterId) {
        return waterMeterMapper.getWaterMeterById(waterMeterId);
    }

    /**
     * Get all water meters
     *  
     * @return List of water meters
     */
    public List < WaterMeter > getAllWaterMeters() {
        return waterMeterMapper.getAllWaterMeters();
    }

    /**
     * Create new water meter
     *  
     * @param waterMeter
     */
    public void insertWaterMeter(WaterMeter waterMeter) {
        waterMeterMapper.insertWaterMeter(waterMeter);
    }

    /**
     * Update exists water meter
     *
     * @param waterMeter
     */
    public void updateWaterMeter(WaterMeter waterMeter) {
        waterMeterMapper.updateWaterMeter(waterMeter);
    }

    /**
     * Delete exists water meter
     *
     * @param waterMeterId
     */
    public void deleteWaterMeter(int waterMeterId) {
        waterMeterMapper.deleteWaterMeter(waterMeterId);
    }
}