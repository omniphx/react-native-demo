describe('My Login application', () => {
  it('should login with valid credentials', async () => {
    try {
      const batteryItem = await driver.$('//*[@text="Battery"]');
      await batteryItem.click();
    } finally {
      await driver.pause(1000);
      await driver.deleteSession();
    }
  });
});
