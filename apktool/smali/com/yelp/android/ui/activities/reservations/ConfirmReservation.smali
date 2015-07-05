.class public Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ConfirmReservation.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Lcom/yelp/android/ui/activities/reservations/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You need to have a locked reservation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string/jumbo v1, "extra.reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "extra.lastName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "extra.phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "extra.legal.disclaimer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method private static final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 352
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/content/Context;)Z
    .locals 4

    .prologue
    const v3, 0x7f0703e3

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 235
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    :try_start_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const v2, 0x7f0703e3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 233
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a:Landroid/widget/EditText;

    .line 150
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c:Landroid/widget/EditText;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v0, 0x7f0c010d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b:Landroid/widget/EditText;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v0, 0x7f0c010e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d:Landroid/widget/EditText;

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0c0110

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->e:Landroid/widget/EditText;

    .line 161
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/Reservation;)V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 174
    const v1, 0x7f0c00e3

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 175
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProvider()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.legal.disclaimer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const v0, 0x7f0c0111

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public static b(Landroid/widget/TextView;Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const v0, 0x7f0703dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 243
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b(Landroid/widget/TextView;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b(Landroid/widget/TextView;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c(Landroid/widget/TextView;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a()V

    .line 194
    :cond_0
    return-void
.end method

.method public static c(Landroid/widget/TextView;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/yelp/android/ui/activities/account/h;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/account/h;-><init>()V

    .line 253
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/account/g;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const v0, 0x7f0703e2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 255
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 260
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.lastName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->r()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 298
    const-string/jumbo v0, "ReservationSessionPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 303
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 197
    new-instance v0, Lcom/yelp/android/appdata/webrequests/be;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.reservation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Reservation;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->e:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "extra.business"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/yelp/android/serializable/YelpBusiness;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/be;-><init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 206
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/be;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 207
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 209
    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 211
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Reservation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Reservation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->hideLoadingDialog()V

    .line 309
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    const-string/jumbo v2, "source_business_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "biz_dimension"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 329
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->f()V

    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 331
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 336
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->startActivity(Landroid/content/Intent;)V

    .line 338
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    new-instance v2, Lcom/yelp/android/serializable/ReservationChangeEvent;

    invoke-direct {v2, p2, v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;-><init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;)V

    const-string/jumbo v0, "com.yelp.android.reservation.update"

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 341
    return-void

    .line 317
    :cond_1
    const-string/jumbo v2, "source_search_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "biz_dimension"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Reservation;)V
    .locals 6

    .prologue
    .line 164
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    const v1, 0x7f070446

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    .line 168
    const v2, 0x7f07043b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationConfirmation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 366
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 367
    const-string/jumbo v2, "business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v2, "provider"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v1
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/h;

    const v1, 0x7f070118

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reservations/h;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->f:Lcom/yelp/android/ui/activities/reservations/h;

    .line 103
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.reservation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 106
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 107
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b()V

    .line 108
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->b(Lcom/yelp/android/serializable/Reservation;)V

    .line 109
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->f:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f070118
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->f:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    .line 346
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->hideLoadingDialog()V

    .line 347
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c050d

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->c()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 146
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->f:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x7f070118
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p2, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservation;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Reservation;)V

    return-void
.end method
