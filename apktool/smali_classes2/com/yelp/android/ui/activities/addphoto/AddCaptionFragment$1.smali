.class Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;->b()V

    .line 187
    return-void
.end method
