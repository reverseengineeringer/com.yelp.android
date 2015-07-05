.class Lcom/yelp/android/ui/activities/mutatebiz/p;
.super Ljava/lang/Object;
.source "EditBusiness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/p;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/p;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 111
    return-void
.end method
