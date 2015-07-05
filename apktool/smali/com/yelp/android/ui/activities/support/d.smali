.class Lcom/yelp/android/ui/activities/support/d;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/view/a;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/d;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/d;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideHotButtons()V

    .line 1156
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/d;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showHotButtons()V

    .line 1161
    return-void
.end method
