.class Lcom/yelp/android/ui/activities/weekly/a;
.super Ljava/lang/Object;
.source "ActivityWeeklyIssue.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)I

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/a;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 260
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method
