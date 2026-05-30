// Fade-up observer
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(e => { if (e.isIntersecting) e.target.classList.add('visible'); });
    }, { threshold: 0.1, rootMargin: '0px 0px -50px 0px' });
    document.querySelectorAll('.fade-up').forEach(el => observer.observe(el));

    // Social media tab switcher
    document.querySelectorAll('.social-tab').forEach(tab => {
      tab.addEventListener('click', () => {
        // Deactivate all tabs + rails
        document.querySelectorAll('.social-tab').forEach(t => t.classList.remove('active'));
        document.querySelectorAll('.social-rail').forEach(r => r.classList.remove('active'));
        // Activate clicked tab + matching rail
        tab.classList.add('active');
        document.getElementById('rail-' + tab.dataset.tab).classList.add('active');
      });
    });

    // ── InternshipIQ Dashboard Animations ──
    function animateCounter(el) {
      const target = parseInt(el.dataset.target, 10);
      const suffix = el.dataset.suffix || '';
      const duration = 1600;
      const step = 16;
      const steps = Math.ceil(duration / step);
      let current = 0;
      let count = 0;
      const inc = target / steps;
      const timer = setInterval(() => {
        count++;
        current = count >= steps ? target : Math.round(inc * count);
        el.textContent = current.toLocaleString() + suffix;
        if (count >= steps) clearInterval(timer);
      }, step);
    }

    const dashObserver = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (!entry.isIntersecting) return;
        // Counters
        entry.target.querySelectorAll('.counter').forEach(animateCounter);
        // Skill bars
        entry.target.querySelectorAll('.fill').forEach(bar => bar.classList.add('animated'));
        dashObserver.unobserve(entry.target);
      });
    }, { threshold: 0.3 });

    const iqDash = document.getElementById('iq-dashboard');
    if (iqDash) dashObserver.observe(iqDash);

// Loader screen — hide after page loads
    window.addEventListener('load', () => {
      const loader = document.getElementById('loader-wrapper');
      if (loader) {
        loader.classList.add('loader-hidden');
        loader.addEventListener('transitionend', () => loader.remove());
      }
    });

// LinkedIn embeds only work on HTTPS (blocked on file:// and localhost).
    // Default is data-broken="1" (shows fallback button).
    // On HTTPS, remove the attribute so the live iframes are revealed.
    if (location.protocol === 'https:') {
      document.querySelectorAll('.li-wrap[data-broken]').forEach(function (el) {
        el.removeAttribute('data-broken');
      });
    }

/* ── CUSTOM CURSOR ── */
    (function () {
      const dot  = document.getElementById('cursor-dot');
      const ring = document.getElementById('cursor-ring');
      if (!dot || !ring) return;

      let mouseX = -100, mouseY = -100;
      let ringX  = -100, ringY  = -100;

      document.addEventListener('mousemove', function(e) {
        mouseX = e.clientX;
        mouseY = e.clientY;
        dot.style.left = mouseX + 'px';
        dot.style.top  = mouseY + 'px';
      });

      /* ring follows with smooth lag */
      function animateRing() {
        ringX += (mouseX - ringX) * 0.14;
        ringY += (mouseY - ringY) * 0.14;
        ring.style.left = ringX + 'px';
        ring.style.top  = ringY + 'px';
        requestAnimationFrame(animateRing);
      }
      animateRing();

      /* hover effect — grow ring on interactive elements */
      var hoverSel = 'a, button, [role="button"], input, textarea, select, .tech-pill, .project-card, .resume-card, .social-card';
      document.querySelectorAll(hoverSel).forEach(function(el) {
        el.addEventListener('mouseenter', function() { document.body.classList.add('cursor-hover'); });
        el.addEventListener('mouseleave', function() { document.body.classList.remove('cursor-hover'); });
      });

      /* hide when cursor leaves window */
      document.addEventListener('mouseleave', function() {
        dot.style.opacity = '0';
        ring.style.opacity = '0';
      });
      document.addEventListener('mouseenter', function() {
        dot.style.opacity = '1';
        ring.style.opacity = '1';
      });
    })();

// â”€â”€ Hamburger / Mobile Nav Drawer â”€â”€
(function() {
  var btn      = document.getElementById('nav-hamburger');
  var drawer   = document.getElementById('nav-mobile-drawer');
  var overlay  = document.getElementById('nav-mobile-overlay');
  var closeBtn = document.getElementById('nav-drawer-close');
  if (!btn || !drawer || !overlay) return;

  function openDrawer() {
    btn.classList.add('open');
    btn.setAttribute('aria-expanded', 'true');
    drawer.classList.add('open');
    drawer.setAttribute('aria-hidden', 'false');
    overlay.classList.add('active');
    document.body.style.overflow = 'hidden';
  }
  function closeDrawer() {
    btn.classList.remove('open');
    btn.setAttribute('aria-expanded', 'false');
    drawer.classList.remove('open');
    drawer.setAttribute('aria-hidden', 'true');
    overlay.classList.remove('active');
    document.body.style.overflow = '';
  }

  btn.addEventListener('click', openDrawer);
  overlay.addEventListener('click', closeDrawer);
  if (closeBtn) closeBtn.addEventListener('click', closeDrawer);
  drawer.querySelectorAll('.nav-drawer-link').forEach(function(link) {
    link.addEventListener('click', closeDrawer);
  });
})();
