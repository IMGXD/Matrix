package com.matrix.utils;

import java.util.UUID;

/**
 * Created by yanglele on 2017/8/2.
 */
public class UUIDUtil {

    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-","");
    }

}
