.class Lcom/yelp/android/ui/activities/fj;
.super Ljava/lang/Object;
.source "FeedbackFormDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/ap;

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/yelp/android/ui/activities/fi;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/fi;Lcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fj;->c:Lcom/yelp/android/ui/activities/fi;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/fj;->a:Lcom/yelp/android/appdata/ap;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/fj;->b:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fj;->c:Lcom/yelp/android/ui/activities/fi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/fi;->dismiss()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fj;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fj;->c:Lcom/yelp/android/ui/activities/fi;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/fi;->a(Lcom/yelp/android/ui/activities/fi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/yelp/android/ui/activities/fj;->a:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/ap;->a()Landroid/net/Uri;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/yelp/android/appdata/webrequests/fu;

    invoke-direct {v3, v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/fu;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/fu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fj;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fj;->b:Landroid/app/PendingIntent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method
