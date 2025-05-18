#[tokio::main(flavor = "current_thread")]
async fn main() -> anyhow::Result<()> {
    tracing_subscriber::fmt().init();
    tracing::info!("Hello, world!");
    Ok(())
}
