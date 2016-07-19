.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v2, Lcom/yelp/android/util/BizClaimUtil$SourceButton;->EDIT_BIZPAGE_TOP_TEASER:Lcom/yelp/android/util/BizClaimUtil$SourceButton;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/BizClaimUtil;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/util/BizClaimUtil$SourceButton;)V

    .line 193
    return-void
.end method
