.class Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;
.super Ljava/lang/Object;
.source "ActivityContextualLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 163
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ContextSignUp:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    const/16 v2, 0x418

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method
