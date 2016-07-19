.class public Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "PlatformSearchDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

.field private final c:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 237
    new-instance v0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$3;-><init>(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    .line 260
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "search_term_map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string/jumbo v2, "location_term"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;Ljava/lang/Integer;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;
    .locals 4

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    move-result-object v0

    .line 101
    if-eqz p5, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "toggle_position"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    .line 231
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->dismiss()V

    .line 224
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 227
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nearby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "search_bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchBarPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "promoted_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterDeliveryCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "delivery_pickup_controller"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "toggle_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "toggle_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    :goto_0
    const-string/jumbo v2, "suggestion"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;ZLjava/lang/Integer;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    const-string/jumbo v2, "delivery_pickup_controller"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;)V

    .line 134
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 139
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;-><init>(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->e()Landroid/support/v7/app/d$a;

    move-result-object v0

    sget v2, Lcom/yelp/android/appdata/n;->a:I

    sget v3, Lcom/yelp/android/appdata/n;->b:I

    sget v4, Lcom/yelp/android/appdata/n;->a:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/d$a;->a(Landroid/view/View;IIII)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f070520

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f0706cd

    new-instance v2, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$1;-><init>(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0205bc

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 170
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 219
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onStart()V

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$2;-><init>(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/app/Dialog;)V

    .line 190
    return-void
.end method
