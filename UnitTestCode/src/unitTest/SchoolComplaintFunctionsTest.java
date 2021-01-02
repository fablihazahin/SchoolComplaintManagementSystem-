package unitTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.junit.AfterClass;
import org.junit.BeforeClass;



public class SchoolComplaintFunctionsTest {

	public SchoolComplaintFunctionsTest() {

    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of loginCheck method, of class SchoolComplaintFunctions.
     */
    @Test
    public void testLoginCheck() {
        System.out.println("loginCheck");
        String id = "fzahin.fz@gmail.com";
        String pass = "2426";
        SchoolComplaintFunctions instance = new SchoolComplaintFunctions();
        String expResult = "pass";
        String result = instance.loginCheck(id, pass);
        assertEquals(expResult, result);

    }
    
    /**
     * Test of adminLoginCheck method, of class SchoolComplaintFunctions.
    */
    @Test
    public void testAdminLoginCheck() {
        System.out.println("adminLoginCheck");
        String id = "admin";
        String pass = "9925";
        SchoolComplaintFunctions instance = new SchoolComplaintFunctions();
        String expResult = "pass";
        String result = instance.adminLoginCheck(id, pass);
        assertEquals(expResult, result);

    }
    

    /**
     * Test of addComplaintCheck method, of class SchoolComplaintFunctions.
     */
    
     @Test
    public void testAddComplaintCheck() {
        System.out.println("addComplaintCheck");
        String complaint = "27";
        SchoolComplaintFunctions instance = new SchoolComplaintFunctions();
        String expResult = "exists";
        String result = instance.addComplaintCheck(complaint);
        assertEquals(expResult, result);

    }
     
     @Test
     public void testAddComplaintCheck2() {
         System.out.println("addComplaintCheck");
         String complaint = "35";
         SchoolComplaintFunctions instance = new SchoolComplaintFunctions();
         String expResult = "added";
         String result = instance.addComplaintCheck(complaint);
         assertEquals(expResult, result);

     }

}
