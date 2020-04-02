package com.perfma.shutdownhook;

public class RuntimeShutdownHook {
    public static void main(String[] args) {

        Thread shutdownHookOne = new Thread() {
            public void run() {
                System.out.println("shutdownHook one...");
            }
        };
        Thread shutdownHookTwo = new Thread() {
            public void run() {
                System.out.println("shutdownHook two...");
            }
        };
        Runtime.getRuntime().addShutdownHook(shutdownHookOne);
        Runtime.getRuntime().addShutdownHook(shutdownHookTwo);

        Runnable threadOne = new Runnable() {
            public void run() {
                try {
                    Thread.sleep(30000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("thread one doing something...");
            }
        };

        Runnable threadTwo = new Thread() {
            public void run() {
                try {
                    Thread.sleep(60000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("thread two doing something...");
            }
        };

        threadOne.run();
        threadTwo.run();
    }
}
