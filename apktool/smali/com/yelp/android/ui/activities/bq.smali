.class Lcom/yelp/android/ui/activities/bq;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bq;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iput p2, p0, Lcom/yelp/android/ui/activities/bq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 399
    iget v0, p0, Lcom/yelp/android/ui/activities/bq;->a:I

    if-ne v0, v1, :cond_1

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bq;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(I)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/bq;->a:I

    if-le v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bq;->b:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showDialog(I)V

    goto :goto_0
.end method
