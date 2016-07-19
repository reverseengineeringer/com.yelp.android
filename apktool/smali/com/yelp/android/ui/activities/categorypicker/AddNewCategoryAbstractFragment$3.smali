.class Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$3;
.super Ljava/lang/Object;
.source "AddNewCategoryAbstractFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$3;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$3;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->z_()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
