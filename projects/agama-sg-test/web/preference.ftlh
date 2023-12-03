[#ftl output_format="HTML"]
        <!DOCTYPE html>
          <html lang="en">
          <head>
          <meta charset="UTF-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>* { box-sizing: border-box; } body {margin: 0;}</style>
          <title>web/preference.ftlh</title>
          </head>
          <body>&lt;#import "../agamapasskey/commons.ftlh" as com&gt;
&lt;@com.main&gt;



&lt;@com.nojs /&gt;

<div class="border border-1 rounded p-5 mb-3">

    &lt;#if message??&gt;
        <div align="center" id="alert" role="alert" class="py-3 alert alert-success">${message}</div><!--#if--><p class="fs-4 mb-5">If you wish, choose a preferred method</p><p class="fs-6 mb-4">This will be the credential you will be asked to present at login. 
        Your other credentials will act as alternatives</p><form method="post" enctype="application/x-www-form-urlencoded">
        &lt;#list methods as m&gt;        
            <div class="mb-3 ps-3"><input type="radio" name="pref" id="${m?counter}" value="${m}"/><label for="${m?counter}" class="link-secondary">                    
                    &lt;#if m == "otp"&gt;
                        One-time verification code
                    &lt;#elseif m == "passphrase"&gt;
                        Your passphrase
                    &lt;#elseif m == "super_gluu"&gt;
                        A Super Gluu notification
                    &lt;#elseif m == "fido2"&gt;
                        Your fido device
                    <!--#if--></label></div><!--#list--><div align="center" class="pt-3 mb-4"><input type="submit" value="Continue" class="btn btn-success px-4"/></div></form></div><!--@com.main--></body><script>
    function hideAlert() {
        let alert = document.getElementById("alert")
        if (alert) {
            alert.remove();
        }
    }
    window.onload = (event) => {
        setTimeout(hideAlert, 3000)
    }
</script>
          </html>