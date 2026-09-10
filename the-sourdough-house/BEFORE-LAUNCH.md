# Before this site goes live

The Sourdough House is a real bakery and this site will trade. Everything
below has to be true before it is public. Nothing here is optional.

## Blocking. Do not put the site online until these are done.

- [x] **The film stays, and the footer says so.** The hero film is
      generated rather than shot in the kitchen, and it is staying. The
      footer now carries one plain line saying the imagery is illustrative
      and created digitally. Do not delete that line while any generated
      imagery remains on the page.

- [ ] **Swap the three step pictures for real photographs** when they
      exist: the starter, the dough, the scored loaf. Shoot all three at
      the same window at the same time of day so they match. Once they are
      in, narrow the footer line so it refers to the film alone.

- [ ] **Fill in the settings at the top of the script in `index.html`.**
      There are four, and they are the whole shop:

      - `WHATSAPP_NUMBER` country code first, digits only, no plus, no
        spaces. A Dubai mobile looks like `9715XXXXXXXX`. Once set, the
        reserve button becomes "Reserve on WhatsApp" and the order arrives
        with the quantity, name, email and total already written out.
      - `INSTAGRAM_URL` the full address of the profile.
      - `LOAF_PRICE` in dirhams. **AED 30 is a placeholder I chose, not
        your price.** One number, used everywhere on the page.
      - `STRIPE_LINKS` only when you want card payment. Leave empty and
        orders go by WhatsApp and are paid on collection.

- [ ] **Fill in every TO FILL box on the page.** They are styled to be
      impossible to miss: where to collect, when, and the trading details
      in the footer. A customer who reserves a loaf and cannot find out
      where to come has been sold nothing.

- [ ] **Confirm every factual claim.** These were invented and read as
      statements the business is making:
      - the price, currently a placeholder AED 30 a loaf
      - the cost breakdown in "What it costs" (AED 3.50 flour, AED 0.20
        water and salt, AED 26.30 time and oven), which I converted to keep
        the proportions and which is still invented
      - "organic stoneground flour from a mill two counties over", which
        matters twice over because the headline says organic
      - the thirty-six hour ferment, which the whole page is built on
      - baked Saturday night, collected Sunday morning
      - one bake a week
      - keeps four or five days
      - "Batch no. 41" in the hero

- [ ] **Say where collection happens.** There is no address, opening time
      or contact anywhere on the site. A customer who reserves a loaf
      currently has no idea where to go.

- [ ] **Fill in the footer.** Trading name, a way to reach you, and your
      company number if you are registered.

- [ ] **If the headline stays "Organic. The way it should be", be certain
      the flour is certified organic.** Organic is a protected term for
      food sold in the UK and the EU. Using it without certification is an
      offence, not a matter of taste.

## Before taking money

- [ ] **Paste a Stripe payment link into `STRIPE_LINKS` at the top of the
      script in `index.html`.** Until then the site takes reservations and
      customers pay on collection, which is a perfectly good way to start.

- [ ] **Add the pages a shop needs**: terms, refunds and cancellations, a
      privacy notice covering the name and email the form collects, and
      allergen information. Bread contains wheat and gluten, which is a
      declarable allergen.

## Returns when you have them

- [ ] **The testimonials section was removed.** It held four quotes that I
      wrote. Real quotes from real customers, used with their permission,
      and the section goes straight back in.
