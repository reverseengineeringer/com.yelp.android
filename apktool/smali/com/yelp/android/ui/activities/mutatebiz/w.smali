.class Lcom/yelp/android/ui/activities/mutatebiz/w;
.super Ljava/lang/Object;
.source "EditOpenHours.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/w;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/w;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f07009a

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/w;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)Lcom/yelp/android/ui/util/ImageInputHelper;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v3, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/w;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(ILjava/util/EnumSet;Landroid/app/Activity;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/w;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_photo"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    return-void

    .line 93
    :cond_0
    const v0, 0x7f070129

    goto :goto_0
.end method
