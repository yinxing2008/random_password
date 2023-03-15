package cn.lblbc.news.controller;

import java.util.Random;

public final class Utils {
    public static String getRandomPassword() {
        String availableChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,.";
        StringBuilder sb = new StringBuilder();
        int len = availableChars.length();
        int passwordLength = 32;

        for (int i = 0; i < passwordLength; i++) {
            sb.append(availableChars.charAt(getRandom(len)));
        }

        String var10000 = sb.toString();
        return var10000;
    }

    private static int getRandom(int len) {
        return new Random().nextInt(len);
    }

}