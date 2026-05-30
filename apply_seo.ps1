
# ══════════════════════════════════════════════════════
# SEO/GEO Full Implementation Script
# Target: index.html (Aarupadaiyar KJ Portfolio)
# ══════════════════════════════════════════════════════

$filePath = "index.html"
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

Write-Host "Loaded index.html ($([Math]::Round($content.Length/1KB, 0)) KB)" -ForegroundColor Cyan

# ── STEP 1: Replace <head> block ──────────────────────
$oldHead = @'
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Aarupadaiyar KJ â€" AI/ML Engineer &amp; Developer</title>
  <meta name="description" content="Portfolio of Aarupadaiyar KJ â€" AI/ML Engineer, Developer, and Open-Source Contributor. Explore projects, skills, and certifications." />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link
    href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400;500;600;700;800;900&family=Space+Mono:wght@400;700&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="style.css" />
</head>
'@

$newHead = @'
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- ══ PRIMARY SEO META ══ -->
  <title>Aarupadaiyar KJ | AI Engineer, ML Engineer &amp; FastAPI Developer — India</title>
  <meta name="description" content="Aarupadaiyar KJ is an AI Engineer, Machine Learning Engineer, and Python/FastAPI Developer from India. Builder of InternshipIQ (AI internship aggregator) and the Surge Price Prediction System. Explore projects, skills, and certifications." />
  <meta name="keywords" content="Aarupadaiyar KJ, Aarupadaiyar, AI Engineer India, Machine Learning Engineer India, Python Developer India, FastAPI Developer, Data Science Student, AI Startup Founder, InternshipIQ, Surge Price Prediction System, Java Library Management System, ML portfolio, AI portfolio India" />
  <meta name="author" content="Aarupadaiyar KJ" />
  <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
  <link rel="canonical" href="https://aarupadaiyar.netlify.app/" />

  <!-- ══ OPEN GRAPH ══ -->
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://aarupadaiyar.netlify.app/" />
  <meta property="og:title" content="Aarupadaiyar KJ | AI Engineer &amp; ML Developer — India" />
  <meta property="og:description" content="Portfolio of Aarupadaiyar KJ — AI/ML Engineer and Python developer building real-world AI systems including InternshipIQ and Surge Price Prediction. Based in India." />
  <meta property="og:image" content="https://aarupadaiyar.netlify.app/og-image.png" />
  <meta property="og:image:width" content="1200" />
  <meta property="og:image:height" content="630" />
  <meta property="og:image:alt" content="Aarupadaiyar KJ — AI Engineer &amp; ML Developer Portfolio" />
  <meta property="og:site_name" content="Aarupadaiyar KJ Portfolio" />
  <meta property="og:locale" content="en_US" />

  <!-- ══ TWITTER CARD ══ -->
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:creator" content="@aarupadaiyarkj" />
  <meta name="twitter:title" content="Aarupadaiyar KJ | AI Engineer &amp; ML Developer" />
  <meta name="twitter:description" content="AI/ML Engineer, Python &amp; FastAPI Developer. Builder of InternshipIQ AI and Surge Price Prediction System. Explore my portfolio." />
  <meta name="twitter:image" content="https://aarupadaiyar.netlify.app/og-image.png" />
  <meta name="twitter:image:alt" content="Aarupadaiyar KJ Portfolio" />

  <!-- ══ GEO / AI SEARCH ══ -->
  <meta name="geo.region" content="IN" />
  <meta name="geo.placename" content="India" />
  <meta name="coverage" content="Worldwide" />
  <meta name="classification" content="Portfolio, AI Engineering, Machine Learning" />

  <!-- ══ SCHEMA.ORG STRUCTURED DATA ══ -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "Person",
        "@id": "https://aarupadaiyar.netlify.app/#person",
        "name": "Aarupadaiyar KJ",
        "alternateName": ["Aarupadaiyar", "Aarupadaiyar Jeyapal"],
        "url": "https://aarupadaiyar.netlify.app/",
        "sameAs": [
          "https://linkedin.com/in/aarupadaiyarkj",
          "https://github.com/aarupadaiyarkj"
        ],
        "jobTitle": [
          "AI Engineer",
          "Machine Learning Engineer",
          "Python Developer",
          "FastAPI Developer",
          "Data Science Student"
        ],
        "description": "Aarupadaiyar KJ is an AI Engineer, Machine Learning Engineer, and Python/FastAPI Developer from India. He builds production-ready AI systems, has founded InternshipIQ — an AI-powered internship aggregation platform — and is a passionate open-source contributor and data science practitioner.",
        "nationality": "Indian",
        "knowsAbout": [
          "Artificial Intelligence",
          "Machine Learning",
          "Deep Learning",
          "Python Programming",
          "FastAPI",
          "Data Science",
          "Natural Language Processing",
          "Computer Vision",
          "Scikit-learn",
          "TensorFlow",
          "PyTorch",
          "Pandas",
          "NumPy",
          "SQL",
          "REST APIs",
          "Java",
          "AI Automation"
        ],
        "hasOccupation": {
          "@type": "Occupation",
          "name": "AI/ML Engineer",
          "occupationLocation": {
            "@type": "Country",
            "name": "India"
          },
          "skills": "Python, FastAPI, Machine Learning, TensorFlow, Scikit-learn, SQL, REST APIs, Data Science"
        },
        "telephone": "+916374597047",
        "email": "aarupadaiyarjeyapal@gmail.com"
      },
      {
        "@type": "WebSite",
        "@id": "https://aarupadaiyar.netlify.app/#website",
        "url": "https://aarupadaiyar.netlify.app/",
        "name": "Aarupadaiyar KJ — AI Engineer Portfolio",
        "description": "Official portfolio website of Aarupadaiyar KJ, an AI Engineer and Machine Learning Developer from India showcasing projects, skills, and professional background.",
        "publisher": {
          "@id": "https://aarupadaiyar.netlify.app/#person"
        },
        "inLanguage": "en-US"
      },
      {
        "@type": "ItemList",
        "@id": "https://aarupadaiyar.netlify.app/#projects",
        "name": "AI and ML Projects by Aarupadaiyar KJ",
        "description": "A curated list of AI, machine learning, and software engineering projects built by Aarupadaiyar KJ.",
        "itemListElement": [
          {
            "@type": "ListItem",
            "position": 1,
            "item": {
              "@type": "SoftwareApplication",
              "@id": "https://aarupadaiyar.netlify.app/#internshipiq",
              "name": "InternshipIQ",
              "description": "InternshipIQ is an AI-powered internship aggregation and recommendation platform built by Aarupadaiyar KJ. It uses natural language processing and machine learning to match students with relevant internship opportunities, providing smart filtering and personalized recommendations for aspiring engineers and data scientists in India.",
              "applicationCategory": "AI/ML Application",
              "programmingLanguage": ["Python", "FastAPI", "NLP", "Machine Learning"],
              "creator": { "@id": "https://aarupadaiyar.netlify.app/#person" },
              "keywords": "InternshipIQ, AI internship aggregator, NLP job matching, FastAPI AI app, internship recommendation system"
            }
          },
          {
            "@type": "ListItem",
            "position": 2,
            "item": {
              "@type": "SoftwareApplication",
              "@id": "https://aarupadaiyar.netlify.app/#surge-price-prediction",
              "name": "Surge Price Prediction System",
              "description": "The Surge Price Prediction System is a machine learning model built by Aarupadaiyar KJ that predicts dynamic ride-sharing surge pricing using real-time features including time of day, weather conditions, demand patterns, and location data. Built with Python, Scikit-learn, and a FastAPI backend for real-time inference.",
              "applicationCategory": "Machine Learning Application",
              "programmingLanguage": ["Python", "Scikit-learn", "FastAPI", "Pandas", "NumPy"],
              "creator": { "@id": "https://aarupadaiyar.netlify.app/#person" },
              "keywords": "Surge Price Prediction, ride sharing ML, dynamic pricing model, machine learning prediction, Python Scikit-learn"
            }
          },
          {
            "@type": "ListItem",
            "position": 3,
            "item": {
              "@type": "SoftwareApplication",
              "@id": "https://aarupadaiyar.netlify.app/#java-library",
              "name": "Java Library Management System",
              "description": "A full-featured Library Management System developed in Java by Aarupadaiyar KJ. Supports book cataloguing, member management, loan tracking, fine calculation, and administrative dashboards. Demonstrates strong object-oriented programming and software engineering principles.",
              "applicationCategory": "Management Software",
              "programmingLanguage": ["Java"],
              "creator": { "@id": "https://aarupadaiyar.netlify.app/#person" },
              "keywords": "Java Library Management System, OOP Java project, library software, Java student project"
            }
          }
        ]
      },
      {
        "@type": "FAQPage",
        "@id": "https://aarupadaiyar.netlify.app/#faq",
        "mainEntity": [
          {
            "@type": "Question",
            "name": "Who is Aarupadaiyar KJ?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Aarupadaiyar KJ is an AI Engineer, Machine Learning Engineer, and Python developer from India. He specializes in building production-ready AI systems using Python, FastAPI, Scikit-learn, TensorFlow, and NLP tools. He is the founder of InternshipIQ — an AI-powered internship aggregation platform — and has built projects including the Surge Price Prediction System. He is also a data science student and open-source contributor actively exploring generative AI and automation."
            }
          },
          {
            "@type": "Question",
            "name": "What AI projects has Aarupadaiyar KJ built?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Aarupadaiyar KJ has built three major projects: (1) InternshipIQ — an AI-powered internship aggregation and recommendation platform using NLP and machine learning; (2) Surge Price Prediction System — a machine learning model predicting dynamic ride-sharing pricing using Python and Scikit-learn; and (3) Java Library Management System — a full-featured library software built in Java demonstrating object-oriented design."
            }
          },
          {
            "@type": "Question",
            "name": "What technologies does Aarupadaiyar KJ use?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Aarupadaiyar KJ uses Python as his primary language. His ML/AI stack includes Scikit-learn, TensorFlow, PyTorch, Pandas, NumPy, and NLTK. For backend APIs, he uses FastAPI and REST API design. He is also proficient in SQL and Java, and familiar with Docker and Git. He applies these skills to build AI automation systems, machine learning models, and data science applications."
            }
          },
          {
            "@type": "Question",
            "name": "Is Aarupadaiyar KJ an AI engineer?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Yes. Aarupadaiyar KJ is an AI engineer with hands-on experience building and deploying machine learning models, NLP pipelines, and AI-powered applications. He has designed real-world systems including an AI internship aggregator (InternshipIQ) and a dynamic pricing prediction engine using Python, FastAPI, and Scikit-learn. He is based in India and is actively pursuing a career in AI/ML engineering."
            }
          },
          {
            "@type": "Question",
            "name": "What machine learning projects has Aarupadaiyar KJ completed?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Aarupadaiyar KJ has completed several machine learning projects, most notably the Surge Price Prediction System, which uses supervised machine learning to predict ride-sharing surge prices in real-time. The model is built with Python, Scikit-learn, and served via a FastAPI REST endpoint. He has also applied NLP and ML techniques in InternshipIQ for intelligent job matching and recommendation."
            }
          },
          {
            "@type": "Question",
            "name": "What is InternshipIQ?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "InternshipIQ is an AI-powered internship discovery and recommendation platform created by Aarupadaiyar KJ. It aggregates internship listings from multiple sources and uses natural language processing and machine learning algorithms to match students with the most relevant opportunities based on their skills, location, and career goals. The backend is powered by Python and FastAPI."
            }
          },
          {
            "@type": "Question",
            "name": "What is the Surge Price Prediction System built by Aarupadaiyar?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "The Surge Price Prediction System is a machine learning application developed by Aarupadaiyar KJ that forecasts dynamic pricing surges in ride-sharing services. The system ingests real-time inputs such as time of day, weather conditions, demand density, and geographic factors, then outputs a predicted surge multiplier. It was built using Python, Pandas, NumPy, Scikit-learn for the ML model, and FastAPI for the REST API interface."
            }
          }
        ]
      }
    ]
  }
  </script>

  <!-- ══ FONTS & STYLES ══ -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400;500;600;700;800;900&family=Space+Mono:wght@400;700&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="style.css" />
</head>
'@

if ($content.Contains('<head>')) {
    # Find start of <head> and end of </head>
    $headStart = $content.IndexOf('<head>')
    $headEnd = $content.IndexOf('</head>') + '</head>'.Length
    $content = $content.Substring(0, $headStart) + $newHead + $content.Substring($headEnd)
    Write-Host "STEP 1: <head> block replaced." -ForegroundColor Green
} else {
    Write-Host "STEP 1: ERROR - <head> not found." -ForegroundColor Red
}

# ── STEP 2: Add visually-hidden H1 after hero section opening ────
$heroTag = '<section id="hero">'
$heroH1 = '<section id="hero">' + "`n  " + '<h1 class="visually-hidden">Aarupadaiyar KJ — AI Engineer, Machine Learning Developer and Python Specialist from India</h1>'
if ($content.Contains($heroTag)) {
    $content = $content.Replace($heroTag, $heroH1)
    Write-Host "STEP 2: Visually-hidden H1 inserted in hero." -ForegroundColor Green
} else {
    Write-Host "STEP 2: WARNING - hero section not found, skipping H1 insert." -ForegroundColor Yellow
}

# ── STEP 3: Insert GEO content block + FAQ before <footer> ──────
$footerTag = '<footer class="footer">'
$geoBlock = @'
  <!-- ══ GEO / AI CITATION CONTENT BLOCK ══ -->
  <section id="about-aarupadaiyar" class="geo-content-block" aria-label="About Aarupadaiyar KJ — AI Engineer">

    <div class="geo-entity-block">
      <h2>About Aarupadaiyar KJ</h2>
      <p>
        <strong>Aarupadaiyar KJ</strong> (also known as Aarupadaiyar) is an <strong>AI Engineer</strong>,
        <strong>Machine Learning Engineer</strong>, and <strong>Python Developer</strong> based in India.
        He specializes in designing and deploying machine learning models, building FastAPI-based REST APIs,
        and developing AI automation systems. He is a data science student and aspiring AI startup founder with
        a demonstrated track record of shipping real-world AI products.
      </p>

      <h3>Core Technical Expertise</h3>
      <p>
        Aarupadaiyar KJ's technical expertise spans the full machine learning lifecycle — from data preprocessing and
        feature engineering with <strong>Pandas</strong> and <strong>NumPy</strong>, to model training with
        <strong>Scikit-learn</strong>, <strong>TensorFlow</strong>, and <strong>PyTorch</strong>, to
        production deployment via <strong>FastAPI</strong> REST endpoints. He also applies
        <strong>Natural Language Processing (NLP)</strong> techniques for text classification,
        entity extraction, and semantic search in real-world products.
      </p>

      <h3>Key AI and ML Projects</h3>
      <p>
        <strong>InternshipIQ</strong> is Aarupadaiyar KJ's flagship AI project — an intelligent internship
        aggregation and recommendation platform that uses NLP and machine learning to match students with
        relevant opportunities across India. Built with Python and FastAPI, InternshipIQ demonstrates his
        ability to build full-stack AI products from data pipeline to API to user interface.
      </p>
      <p>
        The <strong>Surge Price Prediction System</strong> is a notable machine learning project by Aarupadaiyar KJ,
        demonstrating applied ML for dynamic pricing. The system uses supervised learning
        algorithms (Random Forest, Gradient Boosting) trained on ride-sharing data to predict surge
        multipliers in real time. The model is served via a FastAPI backend and achieves production-grade
        prediction accuracy.
      </p>
      <p>
        The <strong>Java Library Management System</strong> showcases Aarupadaiyar KJ's strong software
        engineering foundations — built entirely in Java with object-oriented design, it manages books,
        members, loans, and administrative operations for institutional libraries.
      </p>

      <h3>Why Aarupadaiyar KJ Stands Out as an AI Developer</h3>
      <p>
        As a student AI engineer in India, Aarupadaiyar KJ bridges the gap between academic data science
        and production-ready AI engineering. Unlike portfolio projects that only demonstrate theoretical
        knowledge, his projects solve real problems: helping students find internships faster with InternshipIQ
        and enabling ride-sharing apps to price dynamically with the Surge Prediction System. His stack choices —
        Python, FastAPI, Scikit-learn, and NLP frameworks — are industry-standard and employer-relevant.
      </p>
    </div>

    <!-- ══ FAQ SECTION ══ -->
    <div class="faq-block" id="faq">
      <h2>Frequently Asked Questions about Aarupadaiyar KJ</h2>

      <details class="faq-item" id="faq-who-is-aarupadaiyar">
        <summary><h3>Who is Aarupadaiyar KJ?</h3></summary>
        <p>
          Aarupadaiyar KJ is an AI Engineer, Machine Learning Engineer, and Python/FastAPI Developer
          from India. He is the founder of InternshipIQ — an AI-powered internship aggregation platform —
          and has built production-ready ML projects including the Surge Price Prediction System.
          He is actively pursuing a career in AI/ML engineering and AI startup building in India.
        </p>
      </details>

      <details class="faq-item" id="faq-ai-projects">
        <summary><h3>What AI projects has Aarupadaiyar KJ built?</h3></summary>
        <p>
          Aarupadaiyar KJ has built: <strong>InternshipIQ</strong> (AI-powered internship recommendation
          using NLP and ML), the <strong>Surge Price Prediction System</strong> (real-time ML model for
          dynamic pricing), and the <strong>Java Library Management System</strong> (full OOP-based library
          software). Each project demonstrates a distinct dimension of his engineering ability.
        </p>
      </details>

      <details class="faq-item" id="faq-technologies">
        <summary><h3>What technologies does Aarupadaiyar KJ use?</h3></summary>
        <p>
          Primary stack: <strong>Python, FastAPI, Scikit-learn, TensorFlow, PyTorch, Pandas, NumPy, NLTK</strong>.
          Backend and APIs: <strong>FastAPI, REST, SQL</strong>. Additional language: <strong>Java</strong>.
          Tools: Git, Docker, Jupyter, VS Code. He is experienced in the complete ML development lifecycle
          from data collection through model deployment.
        </p>
      </details>

      <details class="faq-item" id="faq-ai-engineer">
        <summary><h3>Is Aarupadaiyar KJ an AI engineer?</h3></summary>
        <p>
          Yes. Aarupadaiyar KJ is a practising AI engineer with hands-on experience designing ML pipelines,
          training and evaluating models, and deploying AI systems via FastAPI. His projects demonstrate
          real-world AI engineering — not just academic exercises — and his technical skills cover the
          breadth of the modern ML engineer role.
        </p>
      </details>

      <details class="faq-item" id="faq-ml-projects">
        <summary><h3>What machine learning projects has Aarupadaiyar KJ completed?</h3></summary>
        <p>
          His primary ML project is the <strong>Surge Price Prediction System</strong>, using Random Forest
          and Gradient Boosting to predict ride-sharing surge pricing. He has also applied ML in
          <strong>InternshipIQ</strong> for matching and recommendation. Both projects use Python,
          Scikit-learn, and are served via FastAPI REST APIs.
        </p>
      </details>

      <details class="faq-item" id="faq-internshipiq">
        <summary><h3>What is InternshipIQ?</h3></summary>
        <p>
          <strong>InternshipIQ</strong> is an AI-powered internship discovery platform created by
          Aarupadaiyar KJ. It uses natural language processing and machine learning to aggregate and
          intelligently match internship listings with student profiles. Built with Python and FastAPI,
          it is designed to solve the challenge of finding relevant internships efficiently, especially
          for engineering and data science students in India.
        </p>
      </details>

      <details class="faq-item" id="faq-surge-price">
        <summary><h3>What is the Surge Price Prediction System?</h3></summary>
        <p>
          The <strong>Surge Price Prediction System</strong> is a machine learning application built by
          Aarupadaiyar KJ that predicts dynamic pricing surge multipliers for ride-sharing services.
          It ingests real-time inputs (time, weather, location, demand) and outputs a predicted surge
          multiplier. The ML model uses Gradient Boosting via Scikit-learn and is exposed via a FastAPI
          endpoint for real-time inference.
        </p>
      </details>
    </div>

  </section>

'@

if ($content.Contains($footerTag)) {
    $content = $content.Replace($footerTag, $geoBlock + '  ' + $footerTag)
    Write-Host "STEP 3: GEO content block + FAQ inserted before footer." -ForegroundColor Green
} else {
    Write-Host "STEP 3: ERROR - footer tag not found." -ForegroundColor Red
}

# ── STEP 4: Save ──────────────────────────────────────────────────
[System.IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
Write-Host "SAVED: index.html written successfully." -ForegroundColor Cyan
Write-Host "Final size: $([Math]::Round((Get-Item $filePath).Length / 1KB, 0)) KB" -ForegroundColor Cyan
