.class Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;
.super Ljava/lang/Object;
.source "SendCompliment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/SendCompliment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;->b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;->a:Landroid/widget/EditText;

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
    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;->b:Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->updateOptionsMenu()V

    .line 316
    return-void
.end method
