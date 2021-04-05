package ut.net.collabsoft.examples;

import org.junit.Test;
import net.collabsoft.examples.api.MyPluginComponent;
import net.collabsoft.examples.impl.MyPluginComponentImpl;

import static org.junit.Assert.assertEquals;

public class MyComponentUnitTest
{
    @Test
    public void testMyName()
    {
        MyPluginComponent component = new MyPluginComponentImpl(null);
        assertEquals("names do not match!", "myComponent",component.getName());
    }
}