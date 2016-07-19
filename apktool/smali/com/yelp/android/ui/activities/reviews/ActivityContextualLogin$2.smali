.class Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;
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
    .line 172
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ContextLogIn:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method
