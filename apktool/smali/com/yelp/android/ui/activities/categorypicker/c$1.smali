.class Lcom/yelp/android/ui/activities/categorypicker/c$1;
.super Ljava/lang/Object;
.source "CategoryPickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/categorypicker/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/BizCategory;

.field final synthetic b:Lcom/yelp/android/ui/activities/categorypicker/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/c;Lcom/yelp/android/serializable/BizCategory;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/c$1;->b:Lcom/yelp/android/ui/activities/categorypicker/c;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/categorypicker/c$1;->a:Lcom/yelp/android/serializable/BizCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/c$1;->b:Lcom/yelp/android/ui/activities/categorypicker/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/c;->a(Lcom/yelp/android/ui/activities/categorypicker/c;)Lcom/yelp/android/ui/activities/categorypicker/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/c$1;->a:Lcom/yelp/android/serializable/BizCategory;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/c$a;->a(Lcom/yelp/android/serializable/BizCategory;)V

    .line 48
    return-void
.end method
