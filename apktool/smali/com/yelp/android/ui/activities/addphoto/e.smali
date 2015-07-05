.class Lcom/yelp/android/ui/activities/addphoto/e;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/e;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/e;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/e;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Lcom/yelp/android/ui/activities/addphoto/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/addphoto/g;->a()V

    .line 183
    return-void
.end method
