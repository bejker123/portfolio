use rocket::{self, fs::FileServer};

// #[rocket::get("/")]
// async fn index() -> &'static str {
//     "Hello, World!"
// }

#[rocket::launch]
fn launch() -> _ {
    rocket::build().mount("/", FileServer::from("public/"))
}
