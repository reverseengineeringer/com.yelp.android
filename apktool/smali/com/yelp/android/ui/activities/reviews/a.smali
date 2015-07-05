.class Lcom/yelp/android/ui/activities/reviews/a;
.super Ljava/lang/Object;
.source "ActivityElitePrompt.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    const v2, 0x7f0c0140

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    invoke-static {v4, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->a(Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    const v4, 0x7f0c013e

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviews/a;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/a;->b:Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/a;->a:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->a(Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;Landroid/view/View;)I

    move-result v1

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v7, v7, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/a;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void

    .line 99
    :cond_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
