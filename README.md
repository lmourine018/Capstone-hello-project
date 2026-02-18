

# Hello Elixir (Phoenix) Project Documentation



##  Overview of the Chosen Technology


### **Elixir**

Elixir is a **functional, concurrent programming language** built on the **Erlang VM (BEAM)**. It is known for:

* High concurrency
* Fault tolerance
* Scalability
* Functional programming paradigm
* Pattern matching
* Immutable data

Elixir is commonly used for:

* Web applications
* Distributed systems
* Real-time systems (chat apps, messaging)
* APIs

---

### **Phoenix Framework**

Phoenix is a web framework built with Elixir.

It provides:

* MVC architecture
* Real-time features (WebSockets via Channels)
* High performance
* Developer-friendly tooling
* Built-in project structure

Phoenix is comparable to:

* Django (Python)
* Rails (Ruby)
* Spring (Java)

---

## Setup Instructions

### Prerequisites

* Install **Elixir**
* Install **Erlang**
* Install **Phoenix**
* Install **Node.js** (for assets)
* Install **PostgreSQL** (if using database)

Check installation:

```bash
elixir -v
mix -v
```

---

### Creating the Phoenix Project

```bash
mix phx.new hello
cd hello
```

---

### 📦 Setup Dependencies

```bash
mix setup
```

> Installs dependencies and sets up database.

---

### Start the Server

```bash
mix phx.server
```

OR

```bash
iex -S mix phx.server
```

---

Now open:

[http://localhost:4000](http://localhost:4000/redirect-test)

You should see the Phoenix welcome page.



# Hello

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please check our deployment guides:
[https://hexdocs.pm/phoenix/deployment.html](https://hexdocs.pm/phoenix/deployment.html)

## Learn more

* Official website: [https://www.phoenixframework.org/](https://www.phoenixframework.org/)
* Guides: [https://hexdocs.pm/phoenix/overview.html](https://hexdocs.pm/phoenix/overview.html)
* Docs: [https://hexdocs.pm/phoenix](https://hexdocs.pm/phoenix)
* Forum: [https://elixirforum.com/c/phoenix-forum](https://elixirforum.com/c/phoenix-forum)
* Source: [https://github.com/phoenixframework/phoenix](https://github.com/phoenixframework/phoenix)

---

##  Minimal Working Example (Hello World)

In Phoenix, the default homepage already acts as a working example.

But to create a simple "Hello World" route manually:

---

### Step 1: Update Router

Edit:

`lib/hello_web/router.ex`

Add inside `scope "/", HelloWeb do`:

```elixir
get "/hello", PageController, :hello
```

---

### Step 2: Add Controller Function

Edit:

`lib/hello_web/controllers/page_controller.ex`



---

### Step 3: Restart Server

```bash
mix phx.server
```

Visit:

```
http://localhost:4000/hello
```

Output:

```
Hello, World from Elixir!
```

This is your minimal working example.

---

##  AI Prompts Used & Learning Reflections

### Example AI Prompts Used

* "How do I create a Phoenix Hello World route?"
* "Explain Phoenix project structure."
* "How to add a new controller in Phoenix?"
* "Common Phoenix setup errors and fixes."

---

### Learning Reflections

* Learned how Phoenix structures MVC applications.
* Understood how routing works in `router.ex`.
* Learned that controllers return responses using `conn`.
* Gained experience with Elixir syntax (pattern matching, functions).
* Improved debugging skills through resolving setup issues.

Big takeaway:

> Phoenix encourages clean architecture and convention-over-configuration similar to Rails.

---

##  Common Errors & How to Resolve Them

---

###  Error 1: `mix: command not found`

**Cause:** Elixir not installed.

**Fix:**
Install Elixir and verify with:

```bash
elixir -v
```

---

###  Error 2: Port 4000 already in use

**Cause:** Another Phoenix server running.

**Fix:**
Kill process or change port in:

`config/dev.exs`

---


###  Error 4: Dependencies not compiling

**Fix:**

```bash
mix deps.get
mix deps.compile
```

---

### Error 5: Route not found (404)

**Cause:** Router not updated correctly.

**Fix:**
Ensure route is added inside correct scope.

---

## Reference Resources

### Official Documentation

* [https://www.phoenixframework.org/](https://www.phoenixframework.org/)
* [https://hexdocs.pm/phoenix](https://hexdocs.pm/phoenix)
* [https://hexdocs.pm/elixir](https://hexdocs.pm/elixir)

---

### Tutorials

* Phoenix Guides: [https://hexdocs.pm/phoenix/overview.html](https://hexdocs.pm/phoenix/overview.html)
* Elixir School: [https://elixirschool.com/](https://elixirschool.com/)

---

### Community

* Elixir Forum: [https://elixirforum.com/](https://elixirforum.com/)
* GitHub: [https://github.com/phoenixframework/phoenix](https://github.com/phoenixframework/phoenix)

---


