

void exit() {
  results.flush();
  results.close();
  super.exit();
}
