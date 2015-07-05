.class Lcom/yelp/android/ui/activities/bv;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FRONT_CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SignUpPhotoTakePhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SignUpPhotoGallery:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->FACEBOOK_PROFILE_PHOTO:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SignUpPhotoFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/util/ImageInputHelper;

    move-result-object v1

    const v2, 0x7f07009a

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1, v2, v0, v3}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(ILjava/util/HashMap;Landroid/app/Activity;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/util/ImageInputHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/as;)V

    .line 496
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bv;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "photo_add_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 497
    return-void
.end method
