.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$1;
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
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)Lcom/yelp/android/ui/widgets/YelpToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->performClick()Z

    .line 131
    return-void
.end method
