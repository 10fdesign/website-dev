---
title: "Managed Wordpress Hosting"
layout: "managed-hosting"
---

<div class="container">
	<div class="row justify-content-center">
		<div class="col-sm-10">
			<h1 class="post-title">{{ page.title }}</h1>
			<p>Hosting your own site can be scary. Wordpress core and plugins are constantly updating independently of each other, and since plugins are made by third-party developers, you never know if it's safe to click that tempting "Update All" button. If something goes wrong, you're making frantic phone calls to your developer at best, or at worst staring at a blank white page with no clue how to fix it.</p>
			<p>Let us take that burden off your shoulders. Our team of elite Wordpress developers will update your site monthly and fix any compatibility problems that might arise. Our automated backups remove any risk from the equation.</p>
			<p>If you're hosted elsewhere, we'll migrate your site to our account absolutely free of charge!</p>
			<div class="row mt-5 mb-5">
				<div class="col-lg-4 mb-lg-0 mb-5">
					<div class="product-tile">
						<h1 class="product-title">Maintenance</h1>
						<h2 class="product-cost">$99/mo</h2>
						<a href="/contact-us" class="product-link">Get Maintenance</a>
						<p>Get peace of mind and let us handle the maintenance.</p>
						<ul>
							<li>Automatic daily backups</li>
							<li>Advanced hosting with WPEngine</li>
							<li>Monthly plugin and core updates</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 mb-lg-0 mb-4">
					<div class="product-tile product-tile-recommended">
						<h4 class="product-notice">Best Value</h4>
						<h1 class="product-title">Support</h1>
						<h2 class="product-cost">$199/mo</h2>
						<a href="/contact-us" class="product-link">Get Support</a>
						<p>Have a support person on call for the important stuff.</p>
						<ul>
							<li>Everything in <strong>Maintenance</strong></li>
							<li>Uptime monitoring</li>
							<li>One hour of developer support for tweaks and fixes</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 mb-lg-0 mb-4">
					<div class="product-tile">
						<h1 class="product-title">Beyond</h1>
						<h2 class="product-cost">$299+/mo</h2>
						<a href="/contact-us" class="product-link">Get Beyond</a>
						<p>For larger businesses who want to get the most out of their website.</p>
						<ul>
							<li>Everything in <strong>Maintenance</strong> and <strong>Support</strong></li>
							<li>A dedicated account manager</li>
							<li>Multiple hours of developer support for tweaks, fixes, and larger improvements</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="logo-cloud">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-sm-10">
				<h2>Take A Look At Some of Our <i class="icofont-slightly-smile"></i> Clients</h2>
				<div class="logos">
					{% for logo in site.data.client_logos %}
						{% if logo.image %}
							<div class="logo">
									{% picture {{ logo.image }} --alt Logo for {{ logo.name }} %}
							</div>
						{% endif %}
					{% endfor %}
				</div>
			</div>
		</div>
	</div>
</div>		