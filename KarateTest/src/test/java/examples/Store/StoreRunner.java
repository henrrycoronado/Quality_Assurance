package examples.Store;

import com.intuit.karate.junit5.Karate;

public class StoreRunner {
    @Karate.Test
    Karate testStore() {
        return Karate.run("get_inventary", "post_order", "get_order", "delete_order").relativeTo(getClass());
    }
}
