use anyhow::{Error, Result};

use greeting_proto::starter::Greeting;

fn main() -> Result<()> {
  let mut args = std::env::args();
  args.next(); // Ignore the program name.
  let path = args.next().ok_or(Error::msg("Failed to load the proto."))?;
  let encoded = std::fs::read_to_string(&path)?;
  let greeting: Greeting  = prost::Message::decode(encoded.as_bytes())?;

  println!("{}, {}!", greeting.greeting, greeting.person);
  Ok(())
}
