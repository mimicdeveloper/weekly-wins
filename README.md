# Weekly Wins

A tiny, single-file web app for capturing your work week and getting a clean AI summary you can download as a PDF or Markdown file.

Built on top of Bianca's weekly template — Monday intentions, daily log, Friday reflection — and designed to take about 10 minutes a week.

**Live:** https://mimicdeveloper.github.io/weekly-wins/

## What it does

Open the page. Fill it in across the week — drafts auto-save to your browser. On Friday, click **Copy AI prompt** to copy your week's entries (plus a polished summarization prompt) to your clipboard. Paste into your AI chat tool of choice, hit send, then paste the reply back. Hit **Download PDF** or **Download Markdown** and you get a clean summary + raw log to keep, share with your manager, or drop into a doc.

## Why this approach

No API keys, no tokens, no server. You use your existing AI chat subscription. Each person's data lives only in their own browser — clear browser data and it's gone.

## How to use it

1. Open the live URL above (or download `index.html` and open it locally).
2. Fill in the week's intentions on Monday morning.
3. Spend 1–2 minutes a day on the daily log.
4. On Friday, fill in the reflection sections (wins, frustrations, learned, next week).
5. Click **Copy AI prompt** → paste into your AI chat → copy reply back → **Download PDF** or **Download Markdown**.

## Privacy

This is a 100% static page. No analytics, no tracking, no backend, no accounts. Your week's entries are stored in `localStorage` on your device only. They are never transmitted anywhere — not even when you generate the PDF (jsPDF builds it locally in your browser).

The only network call the page makes is loading the [jsPDF](https://github.com/parallax/jsPDF) library from a public CDN.

## For coworkers

You can use this as-is — just open the URL and start typing. Bookmark it. Your data persists across browser sessions on the same device. If you want your own private fork (e.g. to change the template fields), fork this repo, edit `index.html`, and deploy your own GitHub Pages copy.

## For maintainers

To update the app:

```bash
# Edit index.html in your repo
git add index.html
git commit -m "Tweak the prompt"
git push
```

GitHub Pages picks up the new version within a minute or two.

## Credits

- Template by **Bianca**.
- Uses [jsPDF](https://github.com/parallax/jsPDF) for client-side PDF generation.

## License

MIT — see [LICENSE](./LICENSE).
