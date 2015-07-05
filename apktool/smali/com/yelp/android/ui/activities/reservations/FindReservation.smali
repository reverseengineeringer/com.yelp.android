.class public Lcom/yelp/android/ui/activities/reservations/FindReservation;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "FindReservation.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Spinner;

.field private f:Ljava/util/Calendar;

.field private g:Lcom/yelp/android/ui/activities/reservations/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 465
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-object v0
.end method

.method private a()Ljava/util/Calendar;
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 136
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 138
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 139
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 140
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 143
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 144
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->j()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 146
    const-string/jumbo v6, "date"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 147
    const-string/jumbo v7, "year"

    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 148
    const-string/jumbo v8, "hour"

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 149
    const-string/jumbo v9, "minute"

    invoke-interface {v5, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 151
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    move v2, v3

    .line 155
    :cond_1
    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 157
    invoke-virtual {v1, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/4 v5, 0x6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 167
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    :cond_3
    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    move-object v5, v1

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 172
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 173
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 179
    return-object v0

    :cond_4
    move-object v5, v1

    goto :goto_0
.end method

.method private a(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 183
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 184
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 185
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->clear(I)V

    .line 189
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->clear(I)V

    .line 190
    const/16 v3, 0x13

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 195
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->clear(I)V

    .line 196
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->clear(I)V

    .line 197
    const/16 v3, 0x17

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v0, 0x13

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 203
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 211
    :cond_0
    return-object v1

    .line 206
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/16 v2, 0x1e

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c()V

    return-void
.end method

.method private a(Ljava/util/Calendar;I)V
    .locals 4

    .prologue
    .line 412
    const-string/jumbo v0, "ReservationSessionPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string/jumbo v1, "hour"

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string/jumbo v1, "minute"

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string/jumbo v1, "date"

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string/jumbo v1, "year"

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string/jumbo v1, "party"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 421
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 528
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 536
    :goto_0
    return v0

    .line 531
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    .line 532
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Reservation;->hasCreditCardHold()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 533
    goto :goto_0

    .line 536
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 215
    const v0, 0x7f0c00aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->d:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->d:Landroid/widget/Button;

    .line 217
    new-instance v1, Lcom/yelp/android/ui/activities/reservations/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/c;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reservations/f;

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "extra.business.key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    .line 231
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Ljava/util/Calendar;I)V

    .line 233
    new-instance v3, Lcom/yelp/android/appdata/webrequests/cf;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/cf;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/Calendar;I)V

    .line 235
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/cf;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 237
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 241
    const v1, 0x7f0c00e3

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 242
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProvider()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 243
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    const-string/jumbo v2, "source_business_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "biz_dimension"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string/jumbo v2, "source_search_page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "biz_dimension"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 312
    const v0, 0x7f0c0147

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a:Landroid/widget/Button;

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a:Landroid/widget/Button;

    .line 315
    new-instance v1, Lcom/yelp/android/ui/activities/reservations/f;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->f:Ljava/util/Calendar;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/reservations/f;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;Ljava/util/Calendar;)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/f;->a()V

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 322
    const v0, 0x7f0c0146

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b:Landroid/widget/Button;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b:Landroid/widget/Button;

    .line 324
    new-instance v1, Lcom/yelp/android/ui/activities/reservations/g;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->f:Ljava/util/Calendar;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/reservations/g;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;Ljava/util/Calendar;)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/g;->a()V

    .line 328
    return-void
.end method

.method private h()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 331
    const v0, 0x7f0c0148

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c:Landroid/widget/Button;

    .line 332
    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    .line 334
    new-array v2, v9, [Ljava/lang/String;

    move v0, v1

    .line 335
    :goto_0
    if-ge v0, v9, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001b

    add-int/lit8 v5, v0, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030141

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 341
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 342
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 346
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 347
    const-string/jumbo v1, "party"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/d;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/e;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void
.end method

.method private i()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/ui/activities/reservations/f;

    .line 376
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, v2, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, v2, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, v2, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 381
    return-object v0
.end method

.method private j()Landroid/content/SharedPreferences;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 392
    const-string/jumbo v0, "ReservationSessionPrefs"

    invoke-virtual {p0, v0, v6}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 395
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    const-string/jumbo v0, "ReservationSessionPrefs"

    invoke-virtual {p0, v0, v6}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    :cond_0
    return-object v0
.end method

.method private k()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/ui/activities/reservations/g;

    .line 425
    iget-object v0, v2, Lcom/yelp/android/ui/activities/reservations/g;->a:Ljava/util/Calendar;

    .line 426
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 427
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 428
    new-instance v0, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/IntervalTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZI)V

    .line 430
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 513
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yelp/android/serializable/YelpBusiness;

    .line 514
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cg;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cg;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cg;->b()Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Landroid/content/Context;Ljava/util/Date;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 522
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationFind:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 562
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business.key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 563
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 564
    const-string/jumbo v2, "business_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string/jumbo v2, "provider"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProviderString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-object v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e()V

    .line 291
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 292
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->setContentView(I)V

    .line 116
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reservations/h;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->g:Lcom/yelp/android/ui/activities/reservations/h;

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->f:Ljava/util/Calendar;

    .line 118
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->f()V

    .line 119
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->g()V

    .line 120
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->h()V

    .line 121
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b()V

    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->d()V

    .line 123
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 273
    :pswitch_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 267
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->i()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->k()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->g:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 542
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 553
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 547
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 548
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->g:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v1, p0, v0}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c050e

    if-ne v0, v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c()V

    .line 256
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e()V

    .line 260
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->f:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Ljava/util/Calendar;I)V

    .line 129
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 286
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservation;->g:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cg;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cg;)V

    return-void
.end method
