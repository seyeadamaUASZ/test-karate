package com.sid.gl.testkarate;

import com.intuit.karate.junit5.Karate;

public class UserApiTest {

    @Karate.Test
    Karate testUserApi(){
        return Karate.run("classpath:UserApiTest.feature").relativeTo(getClass());
    }

}
