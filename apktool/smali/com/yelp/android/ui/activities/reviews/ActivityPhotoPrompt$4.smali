.class Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;
.super Ljava/lang/Object;
.source "ActivityPhotoPrompt.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;->b:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;->b:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/util/ar;->b(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$4;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 334
    return-void
.end method
