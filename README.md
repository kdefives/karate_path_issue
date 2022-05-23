# How to test the strange behavior?
1. Ensure to use Karate version 1.2.0 inside pom.xml, refresh maven dependencies en then execute the class src/test/java/features/SuiteTest.java (using IDEA for instance).
2. Normally, you will see the test using path parameter is failing.
3. **Workaround 1:** Inside file src/test/java/features/tests/test-feature-fail.feature, if you put the Given path .... after the call read, you will see the test passed. **Normal? I do not knwow.**
4. **Workaround 2:** Just rollback to Karate version 1.1.0 without any changes, all tests passed perfectly. **Regression?**