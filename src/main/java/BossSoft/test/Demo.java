package BossSoft.test;

import cn.hutool.core.util.ZipUtil;

public class Demo {
    public static void main(String[] args) {
//        ZipUtil.zip("g:/aaa","d:/bbb/aaa.zip");
        ZipUtil.unzip("d:/bbb/aaa.zip","g:/aaa");
    }
}
