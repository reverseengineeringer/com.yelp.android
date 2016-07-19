.class Lcom/yelp/android/ui/activities/support/YelpActivity$1;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/view/KeyboardAwareLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$1;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$1;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 1270
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$1;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 1275
    return-void
.end method
