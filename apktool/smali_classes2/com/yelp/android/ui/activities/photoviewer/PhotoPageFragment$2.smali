.class Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/a$a;->a()V

    .line 82
    :cond_0
    return-void
.end method
