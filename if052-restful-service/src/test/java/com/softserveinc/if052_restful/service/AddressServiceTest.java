package com.softserveinc.if052_restful.service;

import com.softserveinc.if052_restful.domain.Address;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class AddressServiceTest
{
    @Autowired
    private AddressService addressService;

    @Test
    public void testGetAddressById()
    {
        Address address = addressService.getAddressById(1);
        Assert.assertNotNull(address);
        System.out.println(address);
    }

    @Test
    public void testGetAllAddresses()
    {
        List<Address> addresses = addressService.getAllAddresses();
        Assert.assertNotNull(addresses);
        for (Address address : addresses)
        {
            System.out.println(address);
        }

    }

    @Test
    public void testInsertAddress() {
        Address address = new Address();
        address.setCity("Івано-Франківськ");
        address.setStreet("Сахарова");
        address.setBuilding("23");
        address.setApartment("503");
        address.setUserId(1);

        addressService.insertAddress(address);
        System.out.println(address.getAddressId());

        Assert.assertTrue(address.getAddressId() != 0);
        Address createdAddress = addressService.getAddressById(address.getAddressId());
        Assert.assertNotNull(createdAddress);
        Assert.assertEquals(address.getAddressId(), createdAddress.getAddressId());
        Assert.assertEquals(address.getCity(), createdAddress.getCity());
        Assert.assertEquals(address.getStreet(), createdAddress.getStreet());
        Assert.assertEquals(address.getBuilding(), createdAddress.getBuilding());
        Assert.assertEquals(address.getApartment(), createdAddress.getApartment());
        Assert.assertEquals(address.getUserId(), createdAddress.getUserId());
    }
    @Test
    public void testUpdateAddress()
    {
        // searching of last record id for update
        List<Address> addresses = addressService.getAllAddresses();
        int lastId = addresses.get(addresses.size() - 1).getAddressId();

        Address address = addressService.getAddressById(lastId);
        address.setCity("Львів");
        address.setStreet("Садова");
        address.setBuilding("2а");
        address.setApartment("1");
        addressService.updateAddress(address);
        Address updatedAddress = addressService.getAddressById(lastId);
        Assert.assertEquals(address.getCity(), updatedAddress.getCity());
        Assert.assertEquals(address.getStreet(), updatedAddress.getStreet());
        Assert.assertEquals(address.getBuilding(), updatedAddress.getBuilding());
        Assert.assertEquals(address.getApartment(), updatedAddress.getApartment());
    }

    @Test
    public void testDeleteAddress()
    {
        Address address = new Address();
        address.setCity("Івано-Франківськ");
        address.setStreet("Сахарова");
        address.setBuilding("23");
        address.setApartment("503");
        address.setUserId(1);
        addressService.insertAddress(address);

//        // searching of last record id for update
//        List<Address> addresses = addressService.getAllAddresses();
//        int lastId = addresses.get(addresses.size() - 1).getAddressId();

//        Address address = addressService.getAddressById(lastId);
        addressService.deleteAddress(address.getAddressId());
        Address deletedAddress = addressService.getAddressById(address.getAddressId());
        Assert.assertNull(deletedAddress);
    }
}


