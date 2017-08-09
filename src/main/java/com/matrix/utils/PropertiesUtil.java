package com.matrix.utils;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/**
 * Created by yanglele
 */
public class PropertiesUtil {

    private static Logger logger = LoggerFactory.getLogger(PropertiesUtil.class);

    private static Properties praps;

    static {
        String fileName = "matrix.properties";
        praps = new Properties();
        try {
            praps.load(new InputStreamReader(PropertiesUtil.class.getClassLoader().getResourceAsStream(fileName), "UTF-8"));
        } catch (IOException e) {
            logger.error("配置文件读取异常", e);
        }
    }

    public static String getProperties(String key) {
        String value = praps.getProperty(key.trim());
        if (StringUtils.isBlank(value)) {
            return null;
        }
        return value;
    }

    public static String getProperties(String key, String defauleValue) {
        String value = praps.getProperty(key.trim());
        if (StringUtils.isBlank(value)) {
            value = defauleValue;
        }
        return value;
    }

}
