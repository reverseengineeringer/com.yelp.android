.class public Lcom/yelp/android/ui/activities/reservations/c;
.super Ljava/lang/Object;
.source "ReservationUtil.java"


# direct methods
.method public static a()Lcom/yelp/android/serializable/ReservationFilter;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Q()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReservationFilter;->a(Ljava/util/Date;)V

    .line 33
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    const/4 v1, 0x2

    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->b()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    goto :goto_0
.end method

.method public static b()Ljava/util/Date;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    const/16 v2, 0x13

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
