.class Lcom/yelp/android/ui/activities/cs;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cs;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cs;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cs;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cs;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->b(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cs;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 180
    return-void
.end method
