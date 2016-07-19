.class public Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ConfirmReservationFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Lcom/yelp/android/appdata/webrequests/au;

.field private g:Lcom/yelp/android/ui/activities/reservations/b;

.field private i:Lcom/yelp/android/serializable/YelpBusiness;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 331
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;-><init>(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Reservation;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You need to have a locked reservation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    const-string/jumbo v2, "lastName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    const-string/jumbo v2, "legal.disclaimer"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method private static final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 100
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Reservation;)V
    .locals 6

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f070469

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 202
    const v2, 0x7f070460

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->E()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)Z
    .locals 4

    .prologue
    const v3, 0x7f070413

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 271
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    :try_start_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const v2, 0x7f070413

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 269
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)Lcom/yelp/android/ui/activities/reservations/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->g:Lcom/yelp/android/ui/activities/reservations/b;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 181
    const v0, 0x7f0f0134

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a:Landroid/widget/EditText;

    .line 182
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v0, 0x7f0f013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c:Landroid/widget/EditText;

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v0, 0x7f0f0135

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v0, 0x7f0f0148

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->d:Landroid/widget/EditText;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v0, 0x7f0f0149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->e:Landroid/widget/EditText;

    .line 193
    return-void
.end method

.method private b(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const v0, 0x7f07040e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 278
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    .line 280
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 282
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 211
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->x()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "legal.disclaimer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f014a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->E()V

    return-void
.end method

.method private c(Landroid/widget/TextView;)Z
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/yelp/android/ui/activities/account/a$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/account/a$a;-><init>()V

    .line 287
    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/account/a;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const v0, 0x7f070412

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 289
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->g()V

    .line 230
    :cond_0
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    .line 233
    new-instance v0, Lcom/yelp/android/appdata/webrequests/au;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Reservation;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v8, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/au;-><init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/au;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 244
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 246
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReservationConfirm:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 248
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "lastName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->m()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationConfirmation:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 174
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    check-cast p1, Lcom/yelp/android/ui/activities/reservations/b;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->g:Lcom/yelp/android/ui/activities/reservations/b;

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 154
    const v0, 0x7f10001e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    const v1, 0x7f03002d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->setHasOptionsMenu(Z)V

    .line 119
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0616

    if-ne v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f()V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 148
    const-string/jumbo v0, "confirm_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 135
    const-string/jumbo v0, "confirm_reservation"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/au;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/au;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->f:Lcom/yelp/android/appdata/webrequests/au;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    .line 127
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 128
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b()V

    .line 129
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c()V

    .line 130
    return-void
.end method
