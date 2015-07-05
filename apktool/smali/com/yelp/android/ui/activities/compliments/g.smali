.class Lcom/yelp/android/ui/activities/compliments/g;
.super Ljava/lang/Object;
.source "SendCompliment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/l;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/SendCompliment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/g;->b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/g;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/g;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/g;->b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->updateOptionsMenu()V

    .line 312
    return-void
.end method
