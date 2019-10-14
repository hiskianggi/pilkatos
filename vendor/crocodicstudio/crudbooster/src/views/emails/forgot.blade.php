@include("crudbooster::emails.header")

<!-- ONE COLUMN SECTION -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" style="table-layout: fixed;">
	<tr>
		<td bgcolor="#ffffff" align="center" style="padding: 70px 15px 70px 15px;" class="section-padding">
			<table border="0" cellpadding="0" cellspacing="0" width="500" class="responsive-table">
				<tr>
					<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<!-- HERO IMAGE -->
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td class="padding-copy">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td>
																<a href="http://alistapart.com/article/can-email-be-responsive/" target="_blank"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/48935/responsive-email.jpg" width="500" height="200" border="0" alt="Can an email really be responsive?" style="display: block; padding: 0; color: #666666; text-decoration: none; font-family: Helvetica, arial, sans-serif; font-size: 16px; width: 500px; height: 200px;" class="img-max"></a>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<!-- COPY -->
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td align="center" style="font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;" class="padding-copy">Hi! ^_^</td>
										</tr>
										<tr>
											<td align="center" style="padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;" class="padding-copy"><p>Someone with IP Address {{$_SERVER['REMOTE_ADDR']}} at {{date('Y-m-d H:i:s')}} has been requested password, the following is your new password : </p>
												<p>Password : {{$password}}</p>
												<p>
													<table border="0" cellspacing="0" cellpadding="0" class="responsive-table">
														<tr>
															<td align="center"><a href="https://app.pilkatos.tech/admin/login" target="_blank" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; background-color: #5D9CEC; border-top: 15px solid #5D9CEC; border-bottom: 15px solid #5D9CEC; border-left: 25px solid #5D9CEC; border-right: 25px solid #5D9CEC; border-radius: 3px; -webkit-border-radius: 3px; -moz-border-radius: 3px; display: inline-block;" class="mobile-button">Login &rarr;</a></td>
														</tr>
													</table>
													<p>
														Jika terjadi kendala, silahkan hubungi pusat bantuan kami di whatsapp <b>085712492969</b><br>
														Terimakasih.
													</p></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		@include("crudbooster::emails.footer")