package dev.cyberjar;

import dev.cyberjar.service.CivilianService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FlywayDemoApp implements CommandLineRunner {

    private final CivilianService civilianService;

    public FlywayDemoApp(CivilianService civilianService) {
        this.civilianService = civilianService;
    }

    public static void main(String[] args) {
        SpringApplication.run(FlywayDemoApp.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("Civilians Registered in NeuroWatch:");
        civilianService.findAll().forEach(civilian -> {
            System.out.printf("- National ID: %s | Under surveillance: %s%n",
                    civilian.getNationalId(), civilian.isUnderSurveillance());
        });
    }
}