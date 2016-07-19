.class public Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReservationSearchController.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

.field private b:Ljava/util/Calendar;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/serializable/ReservationFilter;

.field private f:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

.field private g:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

.field private i:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

.field private j:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 193
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    .line 227
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->g:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    .line 237
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$3;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->i:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    .line 246
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$4;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->j:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    return p1
.end method

.method public static a()Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->j:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->g:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->i:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    const/4 v1, 0x2

    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->b()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    .line 157
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->setReservationPartyPickerText(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a(Ljava/util/Calendar;)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->b(Ljava/util/Calendar;)V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/ReservationFilter;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    .line 173
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V
    .locals 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->setWidgetListener(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->h()V

    .line 183
    :cond_0
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Q()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xf

    const/16 v3, 0x13

    const/16 v4, 0x17

    invoke-static {v0, v2, v3, v4}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 139
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string/jumbo v1, "party_size"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 143
    const-string/jumbo v2, "reservation_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 144
    return-object v0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->g()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e:Lcom/yelp/android/serializable/ReservationFilter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/ReservationFilter;)V

    .line 152
    :cond_0
    return-void
.end method

.method public f()Lcom/yelp/android/serializable/ReservationFilter;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    iget v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "NumberPickerDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->g:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "DatePickerDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    .line 76
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->i:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "TimePickerDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    .line 82
    if-eqz v0, :cond_2

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->j:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    if-nez v0, :cond_3

    .line 90
    if-eqz p1, :cond_4

    .line 91
    const-string/jumbo v0, "saved_party_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    .line 92
    const-string/jumbo v0, "saved_reservation_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    .line 100
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08001e

    iget v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->d:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->h()V

    .line 103
    return-void

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "party_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    .line 97
    const-string/jumbo v1, "reservation_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "saved_party_size"

    iget v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v0, "saved_reservation_time"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    return-void
.end method
