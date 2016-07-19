.class Lcom/yelp/android/ui/activities/AddNewBizDialog$2;
.super Ljava/lang/Object;
.source "AddNewBizDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/AddNewBizDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/AddNewBizDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/AddNewBizDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/AddNewBizDialog$2;->a:Lcom/yelp/android/ui/activities/AddNewBizDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchClickOwnerAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/AddNewBizDialog$2;->a:Lcom/yelp/android/ui/activities/AddNewBizDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->a(Lcom/yelp/android/ui/activities/AddNewBizDialog;)Lcom/yelp/android/ui/activities/AddNewBizDialog$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/AddNewBizDialog$a;->b(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/AddNewBizDialog$2;->a:Lcom/yelp/android/ui/activities/AddNewBizDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->dismiss()V

    .line 62
    return-void
.end method
