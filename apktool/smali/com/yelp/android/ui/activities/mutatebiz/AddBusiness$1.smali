.class Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;
.super Ljava/lang/Object;
.source "AddBusiness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Ljava/util/Locale;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$b;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "flags_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 115
    return-void
.end method
