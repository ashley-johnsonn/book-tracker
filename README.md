# 📚 Book Tracker

> _Because your brain can only remember so many plot twists..._

A cozy Rails app to keep track of all the books you've read, are reading, or have been meaning to read for the past 3 years.

## ✨ What Does This Thing Do?

- **Track Your Books** - Add books to your personal library with titles, authors, cover images, and all the good stuff
- **Rate Your Reads** - Give books 1-5 stars
- **Organize Your Life** - Categorize books as "Want to Read", "Reading", or "Finished"
- **Search Like a Pro** - Find books in your library or search Google Books API for your next read
- **Get AI Recommendations** - Let Claude suggest your next favorite book based on what you've loved
- **Your Books, Your Space** - Each user gets their own private collection with authentication

## 🚀 Getting Started

### Prerequisites

- Ruby (because this is a Rails app, duh)
- Rails 8.0+
- SQLite (already included)
- A Google Books API key (optional, if you want search to work)
- An Anthropic API key (for those sweet AI recommendations)

### Installation

```bash
# Clone this bad boy
git clone https://github.com/ashley-johnsonn/book-tracker.git
cd book-tracker

# Install dependencies
bundle install

# Set up the database
rails db:migrate

# Add your API keys
rails credentials:edit
# Add this:
# anthropic:
#   api_key: your-api-key-here

# Fire it up!
rails server
```

Visit `http://localhost:3000`

## 💻 Demo

https://github.com/user-attachments/assets/250b5392-f89a-4c52-b093-5c8d92cba440

AI Book Recommendaions
<img width="1441" height="726" alt="Screenshot 2026-01-12 at 7 20 03 am" src="https://github.com/user-attachments/assets/ba5e6475-0b28-407b-83df-f43239c3d4a7" />

## 🎨 Features Breakdown

### The Basics

- **User Authentication** - Sign up, log in, keep your terrible book takes private
- **Book Management** - Add, edit, delete, and admire your collection
- **Search Your Library** - Can't remember if you read that book? Search it!

### The Cool Stuff

- **Google Books Integration** - Search millions of books and add them with one click
- **AI-Powered Recommendations** - Claude analyzes your 4+ star books and suggests what to read next
- **Reading Status Tracking** - Organize books by want-to-read, currently reading, or finished
- **Rating System** - Rate books 1-5 stars (decimals not included, we're not monsters)

## 🛠️ Tech Stack

- **Ruby on Rails 8.0** - The good stuff
- **SQLite** - Keeping it simple and portable
- **Tailwind CSS** - Making it look pretty without trying too hard
- **Google Books API** - For finding your next obsession
- **Anthropic Claude API** - Your AI book buddy

## 📖 Usage

1. **Sign up** and create your account
2. **Add books** manually or search Google Books
3. **Rate and review** your reads
4. **Get recommendations** from our AI overlord (Claude)
5. **Never forget** what you've read again!

## 🤝 Contributing

Found a bug? Want to add a feature? PRs are welcome! Just keep it lighthearted and don't break anything.

## 📝 License

This project is open source and available under the MIT License. Do whatever you want with it!

## 💭 Final Thoughts

Remember: A book untracked is a book forgotten. But also, it's totally fine to have 500 books on your "want to read" list. We don't judge here.

Happy reading! 📖✨
