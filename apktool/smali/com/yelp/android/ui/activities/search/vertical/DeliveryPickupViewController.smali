.class public Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
.super Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
.source "DeliveryPickupViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

.field private e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

.field private f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

.field private g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

.field private final i:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

.field private final j:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

.field private final k:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;-><init>()V

    .line 279
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->i:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    .line 325
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->j:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

    .line 338
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->k:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Z)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    const-string/jumbo v2, "ADDRESS"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string/jumbo v2, "ENABLE_SEARCH_ACTION"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;ZLjava/lang/Integer;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
    .locals 4

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Z)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-result-object v0

    .line 92
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TOGGLE_POSITION"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b:Z

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d()V

    .line 247
    :goto_1
    iget v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    goto :goto_1

    .line 244
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c()V

    goto :goto_1

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c()Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v2, "tag_reverse_geolocate_address_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    const-string/jumbo v3, "tag_reverse_geolocate_address_fragment"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->g:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ENABLE_SEARCH_ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->j:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V

    .line 274
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    iget v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "pickup"

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "delivery_current_location"

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "delivery"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getEnteredAddress()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    :try_end_0
    .catch Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const v1, 0x7f070297

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 220
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->i:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->setController(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;)V

    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b()V

    .line 162
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->f:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    .line 216
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    .line 224
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 137
    const-string/jumbo v0, "extra.disambiguated_address"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 143
    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d()V

    goto :goto_0

    .line 146
    :cond_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b:Z

    .line 102
    if-eqz p1, :cond_0

    .line 107
    const-string/jumbo v0, "TOGGLE_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    .line 108
    const-string/jumbo v0, "ADDRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 109
    const-string/jumbo v0, "SHOW_CURRENT_LOCATION_VIEW"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->k:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b()V

    .line 118
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "TOGGLE_POSITION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string/jumbo v0, "TOGGLE_POSITION"

    iget v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string/jumbo v0, "ADDRESS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->e:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string/jumbo v0, "SHOW_CURRENT_LOCATION_VIEW"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    return-void
.end method
