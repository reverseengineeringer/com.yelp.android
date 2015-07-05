.class Lcom/yelp/android/ui/dialogs/bc;
.super Ljava/lang/Object;
.source "PrivacyPolicyDialog.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/bc;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->D()V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bc;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->dismiss()V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bc;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->dismiss()V

    .line 263
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bc;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->e(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/bc;->a:Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;->f(Lcom/yelp/android/ui/dialogs/PrivacyPolicyDialog;)V

    .line 256
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/bc;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
